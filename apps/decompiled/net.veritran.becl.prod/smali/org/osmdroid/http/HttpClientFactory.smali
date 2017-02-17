.class public Lorg/osmdroid/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static mFactoryInstance:Lorg/osmdroid/http/IHttpClientFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/osmdroid/http/HttpClientFactory$1;

    invoke-direct {v0}, Lorg/osmdroid/http/HttpClientFactory$1;-><init>()V

    sput-object v0, Lorg/osmdroid/http/HttpClientFactory;->mFactoryInstance:Lorg/osmdroid/http/IHttpClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/osmdroid/http/HttpClientFactory;->mFactoryInstance:Lorg/osmdroid/http/IHttpClientFactory;

    invoke-interface {v0}, Lorg/osmdroid/http/IHttpClientFactory;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static setFactoryInstance(Lorg/osmdroid/http/IHttpClientFactory;)V
    .locals 0
    .param p0, "aHttpClientFactory"    # Lorg/osmdroid/http/IHttpClientFactory;

    .prologue
    .line 35
    sput-object p0, Lorg/osmdroid/http/HttpClientFactory;->mFactoryInstance:Lorg/osmdroid/http/IHttpClientFactory;

    .line 36
    return-void
.end method
