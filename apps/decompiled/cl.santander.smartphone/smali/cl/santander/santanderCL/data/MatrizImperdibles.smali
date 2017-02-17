.class public Lcl/santander/santanderCL/data/MatrizImperdibles;
.super Ljava/lang/Object;
.source "MatrizImperdibles.java"


# instance fields
.field private ofertas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemImperdible;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;DD)V
    .locals 9
    .param p1, "root"    # Ljava/util/Vector;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    .line 23
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v7, v2, :cond_1

    .line 36
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 24
    .restart local v7    # "i":I
    :cond_1
    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 25
    .local v8, "info":Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v2, v8, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    .line 27
    :try_start_0
    new-instance v1, Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-object v0, v8

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcl/santander/santanderCL/data/response/ItemImperdible;-><init>(Lorg/ksoap2/serialization/SoapObject;DD)V

    .line 28
    .local v1, "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    iget-object v2, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v1    # "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;DD)V
    .locals 9
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    .line 40
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v2

    if-lt v7, v2, :cond_1

    .line 55
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 42
    .restart local v7    # "i":I
    :cond_1
    invoke-virtual {p1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    .line 43
    .local v8, "info":Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v2, v8, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    .line 45
    :try_start_0
    new-instance v1, Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-object v0, v8

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcl/santander/santanderCL/data/response/ItemImperdible;-><init>(Lorg/ksoap2/serialization/SoapObject;DD)V

    .line 46
    .local v1, "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    iget-object v2, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "item":Lcl/santander/santanderCL/data/response/ItemImperdible;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemImperdible;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemImperdible;

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemImperdible;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemImperdible;

    return-object v0
.end method

.method public getImperdibles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemImperdible;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizImperdibles;->ofertas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
