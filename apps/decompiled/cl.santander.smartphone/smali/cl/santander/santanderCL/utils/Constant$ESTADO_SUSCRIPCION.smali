.class public final enum Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ESTADO_SUSCRIPCION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABONADO:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

.field public static final enum PENDIENTE:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    const-string v1, "ABONADO"

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->ABONADO:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    const-string v1, "PENDIENTE"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->PENDIENTE:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->ABONADO:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    aput-object v1, v0, v2

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->PENDIENTE:Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    aput-object v1, v0, v3

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
