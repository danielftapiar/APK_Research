.class public Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;
.super Ljava/util/HashMap;
.source "VMPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/VMPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v0, "Cipher.VMPC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.VMPC$Base"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "KeyGenerator.VMPC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.VMPC$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "Mac.VMPCMAC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.VMPC$Mac"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Alg.Alias.Mac.VMPC"

    const-string v1, "VMPCMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Alg.Alias.Mac.VMPC-MAC"

    const-string v1, "VMPCMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/VMPC$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
