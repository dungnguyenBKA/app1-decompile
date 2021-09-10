.class Ln4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4$a;
    }
.end annotation


# instance fields
.field private final a:Ln4$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Li4$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lm4;

    .line 2
    new-instance v1, Ln4$a;

    invoke-direct {v1, p1, p2, v0, p3}, Ln4$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lm4;Li4$a;)V

    .line 3
    iput-object v1, p0, Ln4;->a:Ln4$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln4;->a:Ln4$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Lh4;
    .locals 1

    .line 1
    iget-object v0, p0, Ln4;->a:Ln4$a;

    invoke-virtual {v0}, Ln4$a;->L()Lh4;

    move-result-object v0

    return-object v0
.end method
