.class public Landroidx/work/impl/h$d;
.super Ld4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ld4;-><init>(II)V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/h$d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lh4;)V
    .locals 1

    .line 1
    new-instance p1, Landroidx/work/impl/utils/f;

    iget-object v0, p0, Landroidx/work/impl/h$d;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/work/impl/utils/f;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/f;->c(Z)V

    return-void
.end method
