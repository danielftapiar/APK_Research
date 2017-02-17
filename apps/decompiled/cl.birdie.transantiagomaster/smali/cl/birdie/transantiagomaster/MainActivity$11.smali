.class final Lcl/birdie/transantiagomaster/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onGetUrlProfilePictureUI(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private final synthetic val$users:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$11;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$11;->val$users:Ljava/util/Collection;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/MainActivity$11;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1106
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$11;->val$users:Ljava/util/Collection;

    .line 1107
    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$11$1;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$11;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v1, p0, v2}, Lcl/birdie/transantiagomaster/MainActivity$11$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$11;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1106
    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->GetUrlProfilePictureForUsers(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 1119
    return-void
.end method
