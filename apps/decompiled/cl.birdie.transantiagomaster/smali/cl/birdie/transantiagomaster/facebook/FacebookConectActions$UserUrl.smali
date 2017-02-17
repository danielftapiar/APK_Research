.class public final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserUrl"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->id:Ljava/lang/String;

    .line 1179
    iput-object p2, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$UserUrl;->url:Ljava/lang/String;

    .line 1180
    return-void
.end method
