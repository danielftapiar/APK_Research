.class Lcl/santander/smartphone/SeleccionaEntorno$1;
.super Ljava/lang/Object;
.source "SeleccionaEntorno.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/SeleccionaEntorno;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/SeleccionaEntorno;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/SeleccionaEntorno;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/SeleccionaEntorno$1;->this$0:Lcl/santander/smartphone/SeleccionaEntorno;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/operations/Entorno;->setValue(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)V

    .line 45
    const/4 v1, 0x1

    sput v1, Lcl/santander/smartphone/Utils;->HOCKEY:I

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcl/santander/smartphone/SeleccionaEntorno$1;->this$0:Lcl/santander/smartphone/SeleccionaEntorno;

    const-class v2, Lcl/santander/smartphone/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcl/santander/smartphone/SeleccionaEntorno$1;->this$0:Lcl/santander/smartphone/SeleccionaEntorno;

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/SeleccionaEntorno;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
