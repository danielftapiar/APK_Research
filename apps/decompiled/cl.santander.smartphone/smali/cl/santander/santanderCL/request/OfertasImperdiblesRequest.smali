.class public Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "OfertasImperdiblesRequest.java"


# instance fields
.field categorias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lat:Ljava/lang/String;

.field lng:Ljava/lang/String;

.field radio:Ljava/lang/String;

.field ratio:Ljava/lang/String;

.field totalRegistros:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;
    .param p3, "radio"    # Ljava/lang/String;
    .param p5, "ratio"    # Ljava/lang/String;
    .param p6, "totalRegistros"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, "categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    iput-object p1, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lat:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lng:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->radio:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->categorias:Ljava/util/ArrayList;

    .line 24
    iput-object p5, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->ratio:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->totalRegistros:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->totalRegistros:Ljava/lang/String;

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->ratio:Ljava/lang/String;

    goto :goto_0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lat:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lng:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->radio:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->categorias:Ljava/util/ArrayList;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x6

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 61
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 62
    const-string v0, "cantidad"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 66
    const-string v0, "ratio"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 70
    const-string v0, "lat"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 74
    const-string v0, "lng"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 78
    const-string v0, "radio"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "idCat"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->NameItem:Ljava/lang/String;

    .line 83
    const-string v0, "categorias"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRegistros()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->totalRegistros:Ljava/lang/String;

    return-object v0
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .param p1, "lat"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lat:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0
    .param p1, "lng"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->lng:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0
    .param p1, "radio"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;->radio:Ljava/lang/String;

    .line 113
    return-void
.end method
