.class Landroidx/lifecycle/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/lifecycle/j;

.field final c:Landroidx/lifecycle/f$a;

.field private d:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;Landroidx/lifecycle/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/j;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/r$a;->c:Landroidx/lifecycle/f$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/j;

    iget-object v1, p0, Landroidx/lifecycle/r$a;->c:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->f(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    :cond_0
    return-void
.end method
