package com.itbank.smartFarm.payModel;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.smartFarm.vo.CartVO;
import com.itbank.smartFarm.vo.MemberVO;
import com.itbank.smartFarm.vo.OrderItemVo;
import com.itbank.smartFarm.vo.OrdersVO;
import com.itbank.smartFarm.vo.ShipmentsVO;

@Mapper
public interface OrderDAO {
	//상품 전체
	@Select("select * from orderitem order by id desc")
	List<OrderItemVo> selectAll();
	
	//상품 하나
	@Select("select * from orderitem where id = #{id}")
	OrderItemVo selectOne(int id);
	
	//장바구니
	@Select("select * from cart where member_id=#{id}")
	public List<CartVO> getOrders(int i);

	//수정할 주문 하나
	@Select("select * from cart where order_id=#{order_id}")
	public CartVO getOrder(int id);

	//삭제 
    @Delete("DELETE FROM orders WHERE id = #{order_id}")
    public int deleteOrder(@Param("order_id") int id);
    
    @Delete("DELETE FROM shipments WHERE id = (SELECT delivery_id FROM orders WHERE id = #{id})")
    public int deleteShipmentByOrder(int id);
    
    //주문 수정
	@Update("UPDATE orders SET count = #{count} WHERE id = #{order_id}")
	public int order(CartVO input);

    @Update("update shipments set address=#{address}  where id=#{delivery_id}")
	public int modifyaddress(CartVO input);

	@Insert("insert into orders(member_id, orderitem_id, delivery_id) values(#{member_id}, #{orderitem_id}, #{delivery_id})")
	public int makerorder(OrdersVO ov);
	
	@Insert("insert into shipments(address) values(#{address})")
	public int makedelivery(String address);
	
	@Select("SELECT id FROM shipments ORDER BY id DESC FETCH FIRST 1 ROWS ONLY")
	public int getdeliveryid();

	@Select("SELECT order_id FROM orderitem ORDER BY id DESC FETCH FIRST 1 ROWS ONLY")
	int getorderitem_id();

	@Select("select delivery_id from orders where id=#{id}")
	int getdelid(int id);

	@Delete("delete from shipments where id=#{deliverid}")
	int deliverid(int deliverid);

	@Update("UPDATE orders SET count = #{count} WHERE id = #{order_id}")
	int count(CartVO cv);

	@Select("SELECT id FROM orders ORDER BY id DESC FETCH FIRST 1 ROWS ONLY")
	int getorderid();

}