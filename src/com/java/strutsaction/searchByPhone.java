package com.java.strutsaction;


import com.java.bean.Member;
import com.java.dao.DaoImpl;
import com.java.dao.IDao;
import com.opensymphony.xwork2.Action;

public class searchByPhone implements Action {

    private Member member;


    public Member getMember() {
        return member;
    }


    public void setMember(Member member) {
        this.member = member;
    }


    @Override
    public String execute() throws Exception {

        IDao<Member> dao = new DaoImpl<Member>();
        member = dao.queryPhone(Member.class, member.getPhone());
        if (member != null) {
            return "success";
        } else
            return "failed";

    }

}
