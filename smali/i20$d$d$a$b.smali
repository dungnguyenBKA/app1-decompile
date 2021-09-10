.class public abstract Li20$d$d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20$d$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$d$d$a$b$b;,
        Li20$d$d$a$b$a;,
        Li20$d$d$a$b$d;,
        Li20$d$d$a$b$c;,
        Li20$d$d$a$b$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$d$d$a$b$b;
    .locals 1

    .line 1
    new-instance v0, Ly10$b;

    invoke-direct {v0}, Ly10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$d$d$a$b$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Li20$d$d$a$b$c;
.end method

.method public abstract d()Li20$d$d$a$b$d;
.end method

.method public abstract e()Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$d$d$a$b$e;",
            ">;"
        }
    .end annotation
.end method
