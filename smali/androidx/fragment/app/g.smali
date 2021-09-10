.class public abstract Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Landroidx/fragment/app/e;


# instance fields
.field private b:Landroidx/fragment/app/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/e;

    invoke-direct {v0}, Landroidx/fragment/app/e;-><init>()V

    sput-object v0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/g;->b:Landroidx/fragment/app/e;

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/fragment/app/m;
.end method

.method public abstract b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract d()I
.end method

.method public e()Landroidx/fragment/app/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Landroidx/fragment/app/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/e;

    iput-object v0, p0, Landroidx/fragment/app/g;->b:Landroidx/fragment/app/e;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Landroidx/fragment/app/e;

    return-object v0
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()V
.end method

.method public abstract h()Z
.end method

.method public i(Landroidx/fragment/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/g;->b:Landroidx/fragment/app/e;

    return-void
.end method
