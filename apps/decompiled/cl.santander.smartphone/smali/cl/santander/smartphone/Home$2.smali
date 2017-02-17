.class Lcl/santander/smartphone/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Home;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Home;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/Home$2;)Lcl/santander/smartphone/Home;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x2

    .line 101
    new-instance v6, Lcl/santander/smartphone/Home$2$1;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/Home$2$1;-><init>(Lcl/santander/smartphone/Home$2;)V

    .line 113
    .local v6, "call":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    invoke-virtual {v0}, Lcl/santander/smartphone/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    iget-object v0, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    invoke-virtual {v0}, Lcl/santander/smartphone/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 114
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    iget-object v0, v0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    invoke-virtual {v1}, Lcl/santander/smartphone/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;

    invoke-virtual {v2}, Lcl/santander/smartphone/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050128

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v7

    const/4 v7, 0x0

    aput-object v7, v5, v8

    .line 114
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 117
    return-void
.end method
