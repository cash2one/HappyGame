-- Date: 2015-9
-- File: msg_cg_role.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 定义了客户端与游戏服务间的部分协议
--// 定义用户账号操作的协议
--// 协议号分配：20000 ~ 20099


LoginGameReqBody = {
    ["name"] = "LoginGameReqBody",
    ["id"] = 20000,
    ["attribs"] = {
        {"serialCode", "string"},
        {"verifySerial", "string"},
        {"extData", "string"},
    },
}

LoginGameRespBody = {
    ["name"] = "LoginGameRespBody",
    ["id"] = 20001,
    ["attribs"] = {
        {"sessionId", "uint32"},
        {"isService", "uint32"},
        {"roleInfo", "RoleDetailInfo", "repeat"},
    },
}

GenerateRoleNameReqBody = {
    ["name"] = "GenerateRoleNameReqBody",
    ["id"] = 20002,
}

GenerateRoleNameRespBody = {
    ["name"] = "GenerateRoleNameRespBody",
    ["id"] = 20003,
    ["attribs"] = {
        {"name", "string"},
    },
}

CreateRoleReqBody = {
    ["name"] = "CreateRoleReqBody",
    ["id"] = 20004,
    ["attribs"] = {
        {"roleCareer", "uint16"},
        {"roleName", "string"},
        {"zoneId", "uint32"},
    },
}

CreateRoleRespBody = {
    ["name"] = "CreateRoleRespBody",
    ["id"] = 20005,
    ["attribs"] = {
        {"isService", "uint32"},
        {"roleInfo", "RoleDetailInfo"},
    },
}

ChangeNameReqBody = {
    ["name"] = "ChangeNameReqBody",
    ["id"] = 20010,
    ["attribs"] = {
        {"name", "string"},
    },
}

ChangeNameRespBody = {
    ["name"] = "ChangeNameRespBody",
    ["id"] = 20011,
}

ReConnReqBody = {
    ["name"] = "ReConnReqBody",
    ["id"] = 20012,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"verifySerial", "string"},
    },
}

ReConnRespBody = {
    ["name"] = "ReConnRespBody",
    ["id"] = 20013,
    ["attribs"] = {
        {"roleInfo", "RoleDetailInfo", "repeat"},
    },
}

QueryViewRolesReqBody = {
    ["name"] = "QueryViewRolesReqBody",
    ["id"] = 20014,
    ["attribs"] = {
        {"count", "uint32"},
    },
}

QueryViewRolesRespBody = {
    ["name"] = "QueryViewRolesRespBody",
    ["id"] = 20015,
    ["attribs"] = {
        {"roleInfos", "RoleFightInfo", "repeat"},
    },
}
