.class public abstract Ll00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li20;Ljava/lang/String;)Ll00;
    .locals 1

    .line 1
    new-instance v0, Lnz;

    invoke-direct {v0, p0, p1}, Lnz;-><init>(Li20;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Li20;
.end method

.method public abstract c()Ljava/lang/String;
.end method
