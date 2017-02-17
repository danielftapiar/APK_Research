.class final Lcl/birdie/transantiagomaster/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$8;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$8;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1054
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$8;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1055
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1049
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$8;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1050
    return-void
.end method
