.class public Lorg/spongycastle/jce/provider/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# static fields
.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;

.field private static final MAX_MEMORY:J

.field private static volatile ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

.field private static threadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    .line 17
    new-instance v0, Lorg/spongycastle/jce/ProviderConfigurationPermission;

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 19
    new-instance v0, Lorg/spongycastle/jce/ProviderConfigurationPermission;

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 76
    sget-object v1, Lorg/spongycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    .line 78
    .local v0, "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    .line 83
    .end local v0    # "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .restart local v0    # "spec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method

.method static getReadLimit(Ljava/io/InputStream;)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_0
    sget-wide v0, Lorg/spongycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 96
    const v0, 0x7fffffff

    goto :goto_0

    .line 99
    :cond_1
    sget-wide v0, Lorg/spongycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method static setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "parameterName"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 29
    .local v1, "securityManager":Ljava/lang/SecurityManager;
    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 33
    if-eqz v1, :cond_0

    .line 35
    sget-object v2, Lorg/spongycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 38
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_1

    if-nez p1, :cond_3

    :cond_1
    move-object v0, p1

    .line 40
    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    .line 47
    .end local p1    # "parameter":Ljava/lang/Object;
    .local v0, "curveSpec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :goto_0
    if-nez v0, :cond_4

    .line 49
    sget-object v2, Lorg/spongycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 72
    .end local v0    # "curveSpec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_2
    :goto_1
    return-void

    .line 44
    .restart local p1    # "parameter":Ljava/lang/Object;
    :cond_3
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1    # "parameter":Ljava/lang/Object;
    invoke-static {p1, v3}, Lorg/spongycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .restart local v0    # "curveSpec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    goto :goto_0

    .line 53
    :cond_4
    sget-object v2, Lorg/spongycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    .end local v0    # "curveSpec":Lorg/spongycastle/jce/spec/ECParameterSpec;
    .restart local p1    # "parameter":Ljava/lang/Object;
    :cond_5
    const-string v2, "ecImplicitlyCa"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    if-eqz v1, :cond_6

    .line 60
    sget-object v2, Lorg/spongycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 63
    :cond_6
    instance-of v2, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_7

    if-nez p1, :cond_8

    .line 65
    :cond_7
    check-cast p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    .end local p1    # "parameter":Ljava/lang/Object;
    sput-object p1, Lorg/spongycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    .line 69
    .restart local p1    # "parameter":Ljava/lang/Object;
    :cond_8
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1    # "parameter":Ljava/lang/Object;
    invoke-static {p1, v3}, Lorg/spongycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lorg/spongycastle/jce/spec/ECParameterSpec;

    goto :goto_1
.end method
