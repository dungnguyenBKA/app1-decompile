.class public abstract Li20$c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$c$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$c$b$a;
    .locals 1

    .line 1
    new-instance v0, Lr10$b;

    invoke-direct {v0}, Lr10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()[B
.end method

.method public abstract c()Ljava/lang/String;
.end method
