package com.kh.product.domain;

import lombok.*;

  @Getter @Setter
  @NoArgsConstructor
  @AllArgsConstructor
  @ToString
  public class Product {
    private Long productId;       //상품번호
    private String pname;   //상품명
    private Long pcount;    //상품수량
    private Long pprice;     //상품가격
}

