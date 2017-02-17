.class Lcl/santander/smartphone/localizador/Localizador$6$1;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/localizador/Localizador$6;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$6$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$6;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$6$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$6;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$6;->access$0(Lcl/santander/smartphone/localizador/Localizador$6;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$23(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->getAddressSelected()Landroid/location/Address;

    move-result-object v0

    .line 313
    .local v0, "direccion":Landroid/location/Address;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$6$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$6;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$6;->access$0(Lcl/santander/smartphone/localizador/Localizador$6;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->localizaManualmente(Landroid/location/Address;)V
    invoke-static {v1, v0}, Lcl/santander/smartphone/localizador/Localizador;->access$24(Lcl/santander/smartphone/localizador/Localizador;Landroid/location/Address;)V

    .line 314
    return-void
.end method
