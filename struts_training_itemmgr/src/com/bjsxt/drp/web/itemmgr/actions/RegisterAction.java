package com.bjsxt.drp.web.itemmgr.actions;

import com.bjsxt.drp.business.itemmgr.manager.ItemManager;
import com.bjsxt.drp.business.itemmgr.model.UserBean;
import com.bjsxt.drp.web.itemmgr.forms.LoginActionForm;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        LoginActionForm laf = (LoginActionForm)form;
        // Item item = new Item();
        UserBean userBean=new UserBean();
        //将属性值从ItemActionForm对象拷贝到Item对象
        BeanUtils.copyProperties(userBean,laf);
        boolean falg= ItemManager.getInstance().register(userBean);
        if(falg=true){
            return mapping.findForward("success");
        }
        return mapping.findForward("errorcf");
    }
    }

