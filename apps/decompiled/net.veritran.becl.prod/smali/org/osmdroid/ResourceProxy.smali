.class public interface abstract Lorg/osmdroid/ResourceProxy;
.super Ljava/lang/Object;
.source "ResourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/ResourceProxy$bitmap;,
        Lorg/osmdroid/ResourceProxy$string;
    }
.end annotation


# virtual methods
.method public abstract getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getDisplayMetricsDensity()F
.end method

.method public abstract getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;
.end method

.method public varargs abstract getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;
.end method
