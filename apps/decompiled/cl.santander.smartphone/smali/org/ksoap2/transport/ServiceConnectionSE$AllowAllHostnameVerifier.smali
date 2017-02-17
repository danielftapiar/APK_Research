.class Lorg/ksoap2/transport/ServiceConnectionSE$AllowAllHostnameVerifier;
.super Ljava/lang/Object;
.source "ServiceConnectionSE.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ksoap2/transport/ServiceConnectionSE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAllHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ksoap2/transport/ServiceConnectionSE;


# direct methods
.method private constructor <init>(Lorg/ksoap2/transport/ServiceConnectionSE;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/ksoap2/transport/ServiceConnectionSE$AllowAllHostnameVerifier;->this$0:Lorg/ksoap2/transport/ServiceConnectionSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ksoap2/transport/ServiceConnectionSE;Lorg/ksoap2/transport/ServiceConnectionSE$AllowAllHostnameVerifier;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/ServiceConnectionSE$AllowAllHostnameVerifier;-><init>(Lorg/ksoap2/transport/ServiceConnectionSE;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
