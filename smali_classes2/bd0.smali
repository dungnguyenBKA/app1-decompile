.class public Lbd0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbd0;->a:Z

    .line 3
    iput-boolean v0, p0, Lbd0;->b:Z

    .line 4
    iput-boolean v0, p0, Lbd0;->c:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lbd0;->d:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lbd0;->e:Z

    .line 7
    iput-object v1, p0, Lbd0;->f:Ljava/lang/String;

    const-string v1, "com.android.vending"

    .line 8
    iput-object v1, p0, Lbd0;->g:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lbd0;->h:Z

    .line 10
    iput-boolean v0, p0, Lbd0;->i:Z

    return-void
.end method
