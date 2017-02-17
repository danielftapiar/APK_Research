.class Lcl/santander/smartphone/localizador/Mapa$2;
.super Ljava/lang/Object;
.source "Mapa.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Mapa;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Mapa;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Mapa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "poiToView":I
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v1, v0, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 163
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v3, v1, Lcl/santander/smartphone/localizador/Mapa;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$2;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemPOI;

    # invokes: Lcl/santander/smartphone/localizador/Mapa;->centraMapaViewPoi(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    invoke-static {v2, v3, v1}, Lcl/santander/smartphone/localizador/Mapa;->access$1(Lcl/santander/smartphone/localizador/Mapa;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    .line 165
    return-void

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
