.class Lcl/santander/smartphone/Home$2$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Home$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/Home$2;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Home$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Home$2$1;->this$1:Lcl/santander/smartphone/Home$2;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "contacto":Landroid/content/Intent;
    const-string v1, "tel:6003203000"

    .line 107
    .local v1, "telefono":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcl/santander/smartphone/Home$2$1;->this$1:Lcl/santander/smartphone/Home$2;

    # getter for: Lcl/santander/smartphone/Home$2;->this$0:Lcl/santander/smartphone/Home;
    invoke-static {v2}, Lcl/santander/smartphone/Home$2;->access$0(Lcl/santander/smartphone/Home$2;)Lcl/santander/smartphone/Home;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcl/santander/smartphone/Home;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
