.class public Lcl/santander/santanderCL/data/response/ItemBanco;
.super Ljava/lang/Object;
.source "ItemBanco.java"


# instance fields
.field id:Ljava/lang/String;

.field nombre:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nombre"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemBanco;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemBanco;->nombre:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemBanco;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemBanco;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemBanco;->nombre:Ljava/lang/String;

    return-object v0
.end method
