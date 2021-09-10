.class public final Lov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lov$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqt<",
        "Lmv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lov;
    .locals 1

    .line 1
    invoke-static {}, Lov$a;->a()Lov;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lpv;

    invoke-direct {v0}, Lpv;-><init>()V

    return-object v0
.end method
