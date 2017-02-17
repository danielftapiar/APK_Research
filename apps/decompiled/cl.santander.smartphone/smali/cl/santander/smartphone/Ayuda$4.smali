.class Lcl/santander/smartphone/Ayuda$4;
.super Ljava/lang/Object;
.source "Ayuda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ayuda;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ayuda;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Ayuda;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Ayuda$4;->this$0:Lcl/santander/smartphone/Ayuda;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "contacto":Landroid/content/Intent;
    const-string v1, "tel:6003203000"

    .line 174
    .local v1, "telefono":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcl/santander/smartphone/Ayuda$4;->this$0:Lcl/santander/smartphone/Ayuda;

    invoke-virtual {v2, v0}, Lcl/santander/smartphone/Ayuda;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method
