.class public final Lxx;
.super Lby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxx$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lxx$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lxx$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lby;-><init>()V

    .line 2
    iput-object p2, p0, Lxx;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Lxx;->b:Lxx$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lxx;->a:Landroid/graphics/Typeface;

    .line 2
    iget-boolean v0, p0, Lxx;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lxx;->b:Lxx$a;

    invoke-interface {v0, p1}, Lxx$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lxx;->c:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lxx;->b:Lxx$a;

    invoke-interface {p2, p1}, Lxx$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lxx;->c:Z

    return-void
.end method
