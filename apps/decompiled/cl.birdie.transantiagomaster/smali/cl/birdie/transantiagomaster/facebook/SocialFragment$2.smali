.class final Lcl/birdie/transantiagomaster/facebook/SocialFragment$2;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/SocialFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/SocialFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 60
    const-string v0, "SocialFragment"

    const-string v1, "LoadContent: onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/SocialFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->cgvAdapter:Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method
