.class public final enum Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PRODUCTOS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

.field public static final enum TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "CUENTA_CORRIENTE"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "CUENTA_CORRIENTE_DOLARES"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "CUENTA_VISTA"

    invoke-direct {v0, v1, v5}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "LINEA_CREDITO"

    invoke-direct {v0, v1, v6}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "LINEA_CREDITO_DOLARES"

    invoke-direct {v0, v1, v7}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "TARJETA_CREDITO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "DEPOSITO_PLAZO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const-string v1, "CUENTA_AHORRO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    const/16 v0, 0x8

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v1, v0, v4

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v1, v0, v5

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v1, v0, v6

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    aput-object v2, v0, v1

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
