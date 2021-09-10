.class public final Lb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6;


# instance fields
.field private final a:Landroidx/room/g;

.field private final b:Landroidx/room/b;


# direct methods
.method public constructor <init>(Landroidx/room/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb6;->a:Landroidx/room/g;

    .line 3
    new-instance v0, Lb6$a;

    invoke-direct {v0, p0, p1}, Lb6$a;-><init>(Lb6;Landroidx/room/g;)V

    iput-object v0, p0, Lb6;->b:Landroidx/room/b;

    return-void
.end method


# virtual methods
.method public a(Lz5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->b()V

    .line 2
    iget-object v0, p0, Lb6;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lb6;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->e(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lb6;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lb6;->a:Landroidx/room/g;

    invoke-virtual {p1}, Landroidx/room/g;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb6;->a:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 6
    throw p1
.end method
