.class abstract Ln80$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln80$b;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Ln80$b;->b:Z

    .line 4
    iput-boolean p3, p0, Ln80$b;->c:Z

    return-void
.end method


# virtual methods
.method abstract a(La90;Ljava/lang/Object;)V
.end method

.method abstract b(Lc90;Ljava/lang/Object;)V
.end method

.method abstract c(Ljava/lang/Object;)Z
.end method
