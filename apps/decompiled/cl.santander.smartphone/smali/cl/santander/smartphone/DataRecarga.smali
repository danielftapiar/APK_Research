.class public Lcl/santander/smartphone/DataRecarga;
.super Ljava/lang/Object;
.source "DataRecarga.java"


# instance fields
.field public email:Ljava/lang/String;

.field public itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

.field public monto:Ljava/lang/String;

.field public montoValue:I

.field public phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/data/response/ItemOperadora;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "_itemOp"    # Lcl/santander/santanderCL/data/response/ItemOperadora;
    .param p2, "_phone"    # Ljava/lang/String;
    .param p3, "_monto"    # Ljava/lang/String;
    .param p4, "_montoValue"    # I
    .param p5, "_email"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcl/santander/smartphone/DataRecarga;->itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

    .line 15
    iput-object p2, p0, Lcl/santander/smartphone/DataRecarga;->phone:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcl/santander/smartphone/DataRecarga;->monto:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcl/santander/smartphone/DataRecarga;->montoValue:I

    .line 18
    iput-object p5, p0, Lcl/santander/smartphone/DataRecarga;->email:Ljava/lang/String;

    .line 19
    return-void
.end method
