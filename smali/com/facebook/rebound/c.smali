.class public Lcom/facebook/rebound/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/facebook/rebound/c;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/rebound/c;

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    invoke-static {v1, v2}, Landroidx/core/app/b;->J0(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-static {v3, v4}, Landroidx/core/app/b;->z(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/c;-><init>(DD)V

    .line 2
    sput-object v0, Lcom/facebook/rebound/c;->c:Lcom/facebook/rebound/c;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/facebook/rebound/c;->b:D

    .line 3
    iput-wide p3, p0, Lcom/facebook/rebound/c;->a:D

    return-void
.end method
