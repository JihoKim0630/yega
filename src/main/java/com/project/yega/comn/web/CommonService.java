package com.project.yega.comn.web;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.project.yega.product.dto.ProductDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CommonService {
	@Autowired
	private ModelMapper modelmapper;



}
