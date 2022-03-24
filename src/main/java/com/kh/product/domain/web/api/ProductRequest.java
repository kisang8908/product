package com.kh.product.domain.web.api;

import lombok.Data;

@Data
public class ProductRequest {
  private String pname;
  private Long pcount;
  private Long pprice;
}
