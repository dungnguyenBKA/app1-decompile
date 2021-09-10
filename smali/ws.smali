.class public abstract Lws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lws$a;,
        Lws$b;,
        Lws$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lws$a;
    .locals 1

    .line 1
    new-instance v0, Lqs$b;

    invoke-direct {v0}, Lqs$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lws$b;
.end method

.method public abstract c()Lws$c;
.end method
