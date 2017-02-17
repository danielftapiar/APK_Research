.class final Lcl/birdie/transantiagomaster/dialogos/BannerActivity$2;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/BannerActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/BannerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/BannerActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/BannerActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->cerrar()V

    .line 40
    return-void
.end method
