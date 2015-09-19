/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.zrx.authority.service.information;

import com.zrx.authority.domain.entity.Page;
import com.zrx.authority.util.PageData;
import java.util.List;

/**
 * <p>Description  :</p>
 * <p>Title  :</p>
 * @author 张日雄 <your.name at your.org>
 * @data 2015-8-27,12:49:07
 * @version 1.0
 */
public interface IPicturesService {

    public void save(PageData pd) throws Exception ;
    public void delete(PageData pd) throws Exception ;
    public void edit(PageData pd) throws Exception ;
    public List<PageData> list(Page page) throws Exception ;
    public List<PageData> listAll(PageData pd) throws Exception ;
    public PageData findById(PageData pd) throws Exception ;
    public void deleteAll(String[] ArrayDATA_IDS) throws Exception ;
    public List<PageData> getAllById(String[] ArrayDATA_IDS) throws Exception ;
    public void delTp(PageData pd) throws Exception ;
    
            
}
