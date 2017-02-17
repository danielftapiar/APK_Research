.class public final enum Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TIPO_DEPOSITO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

.field public static final enum FIJO:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

.field public static final enum RENOVABLE:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    const-string v1, "FIJO"

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->FIJO:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    const-string v1, "RENOVABLE"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->RENOVABLE:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    const/4 v0, 0x2

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->FIJO:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    aput-object v1, v0, v2

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->RENOVABLE:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    aput-object v1, v0, v3

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
