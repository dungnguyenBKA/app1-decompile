.class public abstract Li20$d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$d$d$b;,
        Li20$d$d$d;,
        Li20$d$d$c;,
        Li20$d$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$d$d$b;
    .locals 1

    .line 1
    new-instance v0, Lw10$b;

    invoke-direct {v0}, Lw10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Li20$d$d$a;
.end method

.method public abstract c()Li20$d$d$c;
.end method

.method public abstract d()Li20$d$d$d;
.end method

.method public abstract e()J
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Li20$d$d$b;
.end method
