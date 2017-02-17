.class public interface abstract Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;
.super Ljava/lang/Object;
.source "SamplingConfiguration.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EnumReferenceInAnnotation"
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    a = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "CallSite"
            value = Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "BackTracer"
            value = Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "SequenceLogger"
            value = Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation
