.class public Lcl/santander/santanderCL/operations/Entorno;
.super Ljava/lang/Object;
.source "Entorno.java"


# static fields
.field private static instance:Lcl/santander/santanderCL/operations/Entorno;


# instance fields
.field value:Lcl/santander/santanderCL/utils/Constant$ENTORNO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcl/santander/santanderCL/operations/Entorno;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcl/santander/santanderCL/operations/Entorno;->instance:Lcl/santander/santanderCL/operations/Entorno;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcl/santander/santanderCL/operations/Entorno;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Entorno;-><init>()V

    sput-object v0, Lcl/santander/santanderCL/operations/Entorno;->instance:Lcl/santander/santanderCL/operations/Entorno;

    .line 16
    :cond_0
    sget-object v0, Lcl/santander/santanderCL/operations/Entorno;->instance:Lcl/santander/santanderCL/operations/Entorno;

    return-object v0
.end method


# virtual methods
.method public getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Entorno;->value:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->ENTORNO_DEFAULT:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Entorno;->value:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    .line 25
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Entorno;->value:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    return-object v0
.end method

.method public setValue(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)V
    .locals 0
    .param p1, "value"    # Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    .prologue
    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/operations/Entorno;->value:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    .line 31
    return-void
.end method
