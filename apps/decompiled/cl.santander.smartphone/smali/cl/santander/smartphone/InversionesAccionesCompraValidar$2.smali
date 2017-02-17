.class Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraValidar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraValidar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 261
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    iget-object v3, v3, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "info":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 264
    const v3, 0x7f03002f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 265
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 267
    const v3, 0x7f0600d1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 268
    .local v2, "tv_title":Landroid/widget/TextView;
    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    iget-object v3, v3, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v3, 0x7f0600d2

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, "tv_info":Landroid/widget/TextView;
    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    iget-object v3, v3, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 273
    return-void
.end method
