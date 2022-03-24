drop table product;
create table product(
    product_id      number(10),     --아이디
    pname           varchar2(20),   --상품명
    pcount          number(40),     --상품수량
    pprice          number(40),       --상품가격
);

--기본키
alter table prodcut add constraint product_product_id_pk primary key(product_id);

--시퀀스
drop sequence product_product_id_seq;
create sequence product_product_id_seq;

--생성--
insert into product(product_id,pname,pcount,pprice)
     values(product_product_id_seq.nextval, '컴퓨터', 5, 1000000);

insert into product(product_id,pname,pcount,pprice)
     values(product_product_id_seq.nextval, '모니터', 5, 500000);

insert into product(product_id,pname,pcount,pprice)
     values(product_product_id_seq.nextval, '프린터', 1, 300000);

--조회--
select product_id, pname, pcount, pprice
  from product
 where product_id = 2;

--수정--
update product
   set pname = '컴퓨터2',
       pcount = 10,
       pprice = 1200000;

--삭제
delete from product where product_id = 1;

--전체조회-
select product_id,pname,pcount,pprice from product;

commit;