.class public final Landroidx/work/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/work/i;

.field b:Landroidx/work/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/i;->b:Landroidx/work/i;

    iput-object v0, p0, Landroidx/work/c$a;->a:Landroidx/work/i;

    .line 3
    new-instance v0, Landroidx/work/d;

    invoke-direct {v0}, Landroidx/work/d;-><init>()V

    iput-object v0, p0, Landroidx/work/c$a;->b:Landroidx/work/d;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/c;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0, p0}, Landroidx/work/c;-><init>(Landroidx/work/c$a;)V

    return-object v0
.end method

.method public b(Landroidx/work/i;)Landroidx/work/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/c$a;->a:Landroidx/work/i;

    return-object p0
.end method
