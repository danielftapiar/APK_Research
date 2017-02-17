.class Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;
.super Ljava/lang/Object;
.source "CustomFiltrosPoiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->runnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$8(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->runnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$8(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    invoke-virtual {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->dismiss()V

    .line 125
    return-void
.end method
