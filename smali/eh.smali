.class public abstract Leh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh$e;,
        Leh$a;,
        Leh$d;,
        Leh$b;,
        Leh$c;
    }
.end annotation


# static fields
.field public static final a:Leh;

.field public static final b:Leh;

.field public static final c:Leh;

.field public static final d:Leh;

.field public static final e:Leh;

.field public static final f:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Leh;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leh$c;

    invoke-direct {v0}, Leh$c;-><init>()V

    sput-object v0, Leh;->a:Leh;

    .line 2
    new-instance v0, Leh$a;

    invoke-direct {v0}, Leh$a;-><init>()V

    sput-object v0, Leh;->b:Leh;

    .line 3
    new-instance v0, Leh$b;

    invoke-direct {v0}, Leh$b;-><init>()V

    sput-object v0, Leh;->c:Leh;

    .line 4
    new-instance v1, Leh$d;

    invoke-direct {v1}, Leh$d;-><init>()V

    sput-object v1, Leh;->d:Leh;

    .line 5
    sput-object v0, Leh;->e:Leh;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 6
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Leh;->f:Lcom/bumptech/glide/load/h;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Leh;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Leh$e;
.end method

.method public abstract b(IIII)F
.end method
