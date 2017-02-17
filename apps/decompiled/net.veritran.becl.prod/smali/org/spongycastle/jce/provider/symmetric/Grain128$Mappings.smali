.class public Lorg/spongycastle/jce/provider/symmetric/Grain128$Mappings;
.super Ljava/util/HashMap;
.source "Grain128.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Grain128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v0, "Cipher.Grain128"

    const-string v1, "org.spongycastle.jce.provider.symmetric.Grain128$Base"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/Grain128$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "KeyGenerator.Grain128"

    const-string v1, "org.spongycastle.jce.provider.symmetric.Grain128$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/Grain128$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
