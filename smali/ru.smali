.class final synthetic Lru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$d;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Lcv$d;
    .locals 1

    new-instance v0, Lru;

    invoke-direct {v0, p0}, Lru;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    sget v1, Lcv;->g:I

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    return-object v0
.end method
