.class Lcl/santander/smartphone/localizador/Localizador$6;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/Localizador$6;)Lcl/santander/smartphone/localizador/Localizador;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    new-instance v2, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v3}, Lcl/santander/smartphone/localizador/Localizador;->access$17(Lcl/santander/smartphone/localizador/Localizador;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {v1, v2}, Lcl/santander/smartphone/localizador/Localizador;->access$22(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V

    .line 308
    new-instance v0, Lcl/santander/smartphone/localizador/Localizador$6$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/Localizador$6$1;-><init>(Lcl/santander/smartphone/localizador/Localizador$6;)V

    .line 317
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$23(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->setRunnableOnItemSelection(Ljava/lang/Runnable;)V

    .line 319
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$6;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$23(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->show()V

    .line 321
    return-void
.end method
