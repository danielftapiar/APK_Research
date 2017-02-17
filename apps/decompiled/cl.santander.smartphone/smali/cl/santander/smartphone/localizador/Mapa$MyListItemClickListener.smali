.class Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;
.super Ljava/lang/Object;
.source "Mapa.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/Mapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Mapa;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/localizador/Mapa;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/localizador/Mapa;Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;-><init>(Lcl/santander/smartphone/localizador/Mapa;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "vista"    # Landroid/view/View;
    .param p3, "posicion"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    invoke-virtual {v1, p3}, Lcl/santander/smartphone/localizador/Mapa;->verDetalle(I)V

    .line 336
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/Mapa;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    .line 337
    .local v0, "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 340
    :cond_0
    return-void
.end method
