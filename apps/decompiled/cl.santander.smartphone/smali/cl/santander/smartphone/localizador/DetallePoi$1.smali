.class Lcl/santander/smartphone/localizador/DetallePoi$1;
.super Ljava/lang/Object;
.source "DetallePoi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/DetallePoi;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/DetallePoi;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/DetallePoi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/DetallePoi$1;->this$0:Lcl/santander/smartphone/localizador/DetallePoi;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetallePoi$1;->this$0:Lcl/santander/smartphone/localizador/DetallePoi;

    iget-object v2, v2, Lcl/santander/smartphone/localizador/DetallePoi;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 128
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetallePoi$1;->this$0:Lcl/santander/smartphone/localizador/DetallePoi;

    # getter for: Lcl/santander/smartphone/localizador/DetallePoi;->pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/DetallePoi;->access$0(Lcl/santander/smartphone/localizador/DetallePoi;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi$1;->this$0:Lcl/santander/smartphone/localizador/DetallePoi;

    # getter for: Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;
    invoke-static {v3}, Lcl/santander/smartphone/localizador/DetallePoi;->access$1(Lcl/santander/smartphone/localizador/DetallePoi;)Lcl/santander/santanderCL/data/response/ItemPOI;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcl/santander/smartphone/localizador/ComoLlegar;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    .line 130
    .local v0, "RutaFragment":Lcl/santander/smartphone/localizador/ComoLlegar;
    const v2, 0x7f06008c

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 133
    return-void
.end method
