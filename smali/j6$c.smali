.class final Lj6$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final c:Lj6$c;

.field static final d:Lj6$c;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lj6;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lj6$c;->d:Lj6$c;

    .line 3
    sput-object v1, Lj6$c;->c:Lj6$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lj6$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lj6$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lj6$c;->d:Lj6$c;

    .line 5
    new-instance v0, Lj6$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lj6$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lj6$c;->c:Lj6$c;

    :goto_0
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lj6$c;->a:Z

    .line 3
    iput-object p2, p0, Lj6$c;->b:Ljava/lang/Throwable;

    return-void
.end method
