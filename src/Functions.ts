declare function fetch(url: string)

export async function fetchAsync(url) {
  const data = await (await (fetch(url)
    .catch((error) => {
      throw new Error(error)
    })
  ))
  return data
}
